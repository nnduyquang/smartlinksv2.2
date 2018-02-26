<?php

namespace App\Http\Requests;

use GuzzleHttp\Client;
use GuzzleHttp\Exception\BadResponseException;
use GuzzleHttp\Exception\ClientException;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Input;
use Illuminate\Validation\Factory;

class PageSpeedInsightRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }


    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        switch ($this->method()) {
            case 'GET':
            case 'DELETE':
            case 'POST': {
                return [
                    'website' => 'required',
                    'phone_number' => 'required|numeric|digits_between:10,12',
                    'email_return' => 'required|email',

                ];
            }
            case 'PUT':
            case 'PATCH': {
                return [
                    'title' => 'required',
                    'content' => 'required'
                ];
            }
        }
    }

    public function messages()
    {
        return [
            'website.required' => 'Xin Vui Lòng Nhập Website Của Quý Khách',
            'phone_number.required' => 'Xin Vui Lòng Nhập Số Điện Thoại Liên Hệ',
            'phone_number.numeric' => 'Số Điện Thoại Không Đúng Định Dạng',
            'phone_number.digits_between' => 'Số Điện Thoại Không Đúng Định Dạng',
            'email_return.required' => 'Xin Vui Lòng Nhập Email Của Quý Khách',
            'email_return.email' => 'Email Không Đúng Định Dạng',
        ];
    }

    public function withValidator($validator)
    {
        $validator->after(function ($validator) {
            if (!$this->checkURLValid()) {
                $validator->errors()->add('website', 'Website Không Tồn Tại');
            }
        });
    }


    public function checkURLValid()
    {
        $url = Input::get('website');
        if ($url) {
            $client = new Client(['verify' => false,'http_errors' => false]);
            try {
                $request = $client->get($url);
                return 1 == 1;
            } catch (\Exception $e) {
                return 0 == 1;
            }
        } else {
            return 0 == 1;
        }
    }
}
