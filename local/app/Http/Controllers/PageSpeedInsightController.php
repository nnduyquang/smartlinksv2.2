<?php

namespace App\Http\Controllers;

use App\Http\Requests\PageSpeedInsightRequest;
use App\PageInsight;
use GuzzleHttp\Client;
use GuzzleHttp;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class PageSpeedInsightController extends Controller
{
    public function resultAnalyticsMobile(Request $request)
    {
        $website = $request->input('website');
        $check_website = parse_url($website);
        if (empty($check_website['scheme'])) {
            $website = 'http://' . ltrim($website, '/');
        }
        $client = new Client(['verify' => false]);
        $pageInsight = new PageInsight();
        $res_mobile = $client->request('GET', 'https://www.googleapis.com/pagespeedonline/v2/runPagespeed?url=' . $website . '&strategy=mobile&screenshot=true&pageStats=htmlResponseBytes,textResponseBytes&key=AIzaSyBgs4pfBrI0cGQlAmCKqNd-bRcH4zBICHs');
        $data_mobile = json_decode($res_mobile->getBody(), true);
        $pageInsight->uasbility_score_mobile = $data_mobile['ruleGroups']['USABILITY']['score'];
        $pageInsight->image_mobile = 'data:' . $data_mobile['screenshot']['mime_type'] . ';base64,' . preg_replace('/-/', '+', preg_replace('/_/', '/', $data_mobile['screenshot']['data']));
        return response()->json([
            'success' => true,
            'data' => $pageInsight
        ]);
    }

    public function resultAnalyticsDesktop(Request $request)
    {
        $website = $request->input('website');
        $check_website = parse_url($website);
        if (empty($check_website['scheme'])) {
            $website = 'http://' . ltrim($website, '/');
        }
        $client = new Client(['verify' => false]);
        $pageInsight = new PageInsight();
        $res_desktop = $client->request('GET', 'https://www.googleapis.com/pagespeedonline/v2/runPagespeed?url=' . $website . '&strategy=desktop&screenshot=true&pageStats=htmlResponseBytes,textResponseBytes&key=AIzaSyBgs4pfBrI0cGQlAmCKqNd-bRcH4zBICHs');
        $data_desktop = json_decode($res_desktop->getBody(), true);
        $pageInsight->uasbility_score_desktop = $data_desktop['ruleGroups']['SPEED']['score'];
        $pageInsight->image_desktop = 'data:' . $data_desktop['screenshot']['mime_type'] . ';base64,' . preg_replace('/-/', '+', preg_replace('/_/', '/', $data_desktop['screenshot']['data']));
        return response()->json([
            'success' => true,
            'data' => $pageInsight

        ]);
    }

    public function resultInfo(PageSpeedInsightRequest $request)
    {
        $hdWebsiteReceive = $request->input('website');
        $hdPhoneNumberReceive = $request->input('phone_number');
        $hdEmailCustomerReceive = $request->input('email_return');
        //return view('frontend.page-speed-insights.index', compact(['hdWebsiteReceive', 'hdPhoneNumberReceive', 'hdEmailCustomerReceive']));
        return response()->json([
            'success' => true,
//            'data' => route('analytic.index', ['hdWebsiteReceive' => $hdWebsiteReceive,'hdPhoneNumberReceive'=>$hdPhoneNumberReceive,'hdEmailCustomerReceive'=>$hdEmailCustomerReceive])
            'hdWebsiteReceive' => $hdWebsiteReceive,
            'hdPhoneNumberReceive' => $hdPhoneNumberReceive,
            'hdEmailCustomerReceive'=>$hdEmailCustomerReceive
        ]);
    }

    public function redirectInfo(Request $request)
    {
        $hdWebsiteReceive = $request->input('hdWebsiteReceive');
        $hdPhoneNumberReceive = $request->input('hdPhoneNumberReceive');
        $hdEmailCustomerReceive = $request->input('hdEmailCustomerReceive');
        return view('frontend.page-speed-insights.index', compact(['hdWebsiteReceive', 'hdPhoneNumberReceive', 'hdEmailCustomerReceive']));
    }
}
