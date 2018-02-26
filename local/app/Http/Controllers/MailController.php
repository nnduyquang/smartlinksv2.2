<?php

namespace App\Http\Controllers;

use App\Http\Requests\MailRequest;
use App\Mail\SendingMailToCustomer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendingMailToMe;


class MailController extends Controller
{
    public function send(MailRequest $request){
        Mail::send(new SendingMailToMe());
        Mail::send(new SendingMailToCustomer());
        if( count(Mail::failures()) > 0 ) {

            echo "Thua <br />";

//            foreach(Mail::failures as $email_address) {
//                echo " - $email_address <br />";
//            }

        } else {
            Mail::send(new SendingMailToCustomer());
            return response()->json([
                'success' => true
            ]);
        }
    }
}
