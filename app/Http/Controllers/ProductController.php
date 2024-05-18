<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function getList (Request $request){
        $list = Product::paginate(5);
        return response()->json([
            "status" => true,
            "data" => $list
        ]);
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
}
