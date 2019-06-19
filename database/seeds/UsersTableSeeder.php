<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder {

	public function run()
	{
		DB::table('users')->truncate();

		$admin = new \App\User();
		$admin->email = "flamur@admin.com";
		$admin->password = "admin";
		$admin->save();

		$staff = new \App\User();
		$staff->email = "valmir@faculty.com";
		$staff->password = "1234";
		$staff->save();

		$student = new \App\User();
		$student->email = "albin@student.com";
		$student->password = "1234";
		$student->save();
	}

}