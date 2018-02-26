<?php

use Illuminate\Database\Seeder;
use App\CategoryPost;

class CategoryPostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $category_posts = [
            [
                'name' => 'Tin Tức' // optional
            ],
            [
                'name' => 'Bài Viết' // optional
            ]
        ];
        foreach ($category_posts as $key => $value) {

            CategoryPost::create($value);

        }
    }
}
