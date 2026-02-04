<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    public function run()
    {
        // $faker = Factory::create();

        // for ($i = 0; $i < 10; $i++) {
        //     DB::table('users')->insert([
        //         'name' => $faker->name(),
        //         'username' => $faker->username(),
        //         'photo' => $faker->imageUrl(100, 100),
        //         'email' => $faker->safeEmail(),
        //         'password' => Hash::make('pass123')
        //     ]);
        // }

        $user = new User;

        $user->factory(10)->create();
    }
}
