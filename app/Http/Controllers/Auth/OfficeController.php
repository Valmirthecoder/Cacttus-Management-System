<?php
namespace App\Http\Controllers\Auth;
use Socialite;
use App\Http\Controllers\Controller;
use App\Student;
use App\Grade;
class StudentLoginController extends Controller
{
    /** 
     * @return \Illuminate\Http\Response
     */
    public function redirectToProvider()
    {
        return Socialite::driver('live')->redirect();
    }
    /**
     * @return \Illuminate\Http\Response
     */
    public function handleProviderCallback()
    {
        $user = Socialite::driver('live')->stateless()->user();
        $student = Student::where(['email' => $user->email])->first();
        if ($student->count() > 0) {
            return view('student.index', compact('student'));
        } else {
            return 'not registered!';
        }
    }
} 