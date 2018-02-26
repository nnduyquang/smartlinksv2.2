<?php

use Illuminate\Database\Seeder;
use App\Config;

class ConfigTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $configs = [
            [
                'name' => 'email-receive',
                'description' => 'Cấu Hình Email Nhận Báo Giá',
                'order'=>1,
                'user_id' => 1
            ],
            [
                'name' => 'email-sender-subject',
                'description' => 'Cấu Hình Subject Gửi Khách Hàng',
                'order'=>2,
                'user_id' => 1
            ],
            [
                'name' => 'email-sender-from',
                'description' => 'Cấu Hình From Gửi Khách Hàng',
                'order'=>3,
                'user_id' => 1
            ],
            [
                'name' => 'email-receive-subject',
                'description' => 'Cấu Hình Subject Nhận Báo Giá',
                'order'=>4,
                'user_id' => 1
            ],
            [
                'name' => 'email-receive-from',
                'description' => 'Cấu Hình From Nhận Báo Giá',
                'order'=>5,
                'user_id' => 1
            ],
            [
                'name' => 'email-signatures',
                'description' => 'Cấu Hình Chữ Ký',
                'order'=>7,
                'user_id' => 1
            ],
            [
                'name' => 'email-sender-content',
                'description' => 'Cấu Hình Nội Dung Gửi Khách Hàng',
                'order'=>6,
                'user_id' => 1
            ],
        ];
        foreach ($configs as $key => $value) {
            Config::create($value);
        }
    }
}
