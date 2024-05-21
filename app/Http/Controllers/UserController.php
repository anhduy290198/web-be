<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function Login (Request $request){
        try {
            $user = User::where(['username'=>$request->username , 'password' => $request->password])->first();
            if(!isset($user)){
                throw new \Exception('Tên đăng nhập hoặc tài khoản không đúng!');
            }
        return response()->json([
            "status" => true,
            "data" => $user
        ]);
        } catch (\Exception $e) {
            dd($e);
            return response()->json([
                "status" => false,
                "data" => '',
                "msg" => $e->getMessage()
            ]);
        }
    }

}
