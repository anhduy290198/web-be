<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function GetListCategory (Request $request){
        try {
            $list = Category::get();
            if(!isset($list)){
                throw new \Exception('Không tồn tại danh mục sản phẩm nào!');
            }
        return response()->json([
            "status" => true,
            "data" => $list
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
