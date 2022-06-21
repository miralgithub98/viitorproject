<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Blog;
use App\Models\User;

class BlogFactory extends Factory
{
     /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Blog::class;
 
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // return [
        //     //

        // ];
         $users = User::all()->random();
        return [
            'blog_title' => $this->faker->realText(50),
            'user_id' => $users->id 
        ];
    }
}

