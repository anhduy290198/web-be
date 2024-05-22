<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function getListProduct (Request $request){
        try {
            $category = $this->checkCategory($request->type);
            $list = Product::where(['id_category' => $category])->get();
            return response()->json([
                "status" => true,
                "data" => $list
            ]);
        } catch (\Exception $e) {
            dd($e);
        }
    }
    public function createProduct (Request $request){
        try {
            $product = Product::create([
                "name" => "Iphone 10",
                "id_category" => 1,
                "price" => 10000000,
                "image" => json_encode(["https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-bac-org.png","https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-bac-org.png"])
            ]);
            return response()->json([
                "status" => true,
                "data" => $product
            ]);
        } catch (\Throwable $e) {
            dd($e);
        }
    }

    public function checkCategory($type)  {
        $res = '';
        if($type === "Phone"){
            $res = 1;
        }else if($type === "Laptop"){
            $res = 2;
        }else if($type === "Tivi"){
            $res = 3;
        }else if($type === "Accessory"){
            $res = 4;
        }
        return $res;
    }
}
