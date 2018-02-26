<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MailRequest extends FormRequest
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
                    'name' => 'required',
                    'email'=>'required|email',
                    'keyword'=>'required'
                ];
            }
            case 'PUT':
            case 'PATCH':
        }
    }
    public function messages()
    {
        return [
            'name.required' => 'Mời Quý Khách Nhập Tên Liên Hệ',
            'email.required' => 'Mời Quý Khách Nhập Email',
            'email.email' => 'Mời Quý Khách Nhập Nhập Đúng Định Dạng Email',
            'keyword.required' => 'Xin Vui Lòng Nhập Thông Tin Báo Giá',
        ];
    }
}
