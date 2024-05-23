<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function getListProduct (Request $request){
        try {
            $query = new Product();
            if($request->id_category){
                $query = $query->where(['id_category' => $request->id_category]);
            }
            if($request->type){
                $filter = $request->filter === 'desc' ? 'DESC' : 'ASC';
                $query = $query->orderBy($request->type, $filter);
            }
            $list = $query->get();
            return response()->json([
                "status" => true,
                "data" => $list
            ]);
        } catch (\Exception $e) {
            return response()->json([
                "status" => false,
                "data" => '',
                "msg" => $e->getMessage()
            ]);
        }
    }
    public function getDetailProduct (Request $request){
        try {
            $product = Product::where(['id' => $request->id])->first();
            return response()->json([
                "status" => true,
                "data" => $product
            ]);
        } catch (\Exception $e) {
            return response()->json([
                "status" => false,
                "data" => '',
                "msg" => $e->getMessage()
            ]);
        }
    }
    public function updateProduct (Request $request){
        try {
            $product = Product::where(['id' => $request->id])->first();
            if(!isset($product)){
                throw new  \Exception('Sản phẩm không tồn tại!');
            }
            $product->name = $request->name;
            $product->price = $request->price;
            $product->quantity = $request->quantity;
            $product->description = $request->description;
            $product->image = json_encode($request->image);
            $product->save();
            return response()->json([
                "status" => true,
                "data" => $product,
                "msg" => "Cập nhật sản phẩm thành công"
            ]);
        } catch (\Exception $e) {
            return response()->json([
                "status" => false,
                "data" => '',
                "msg" => $e->getMessage()
            ]);
        }
    }
    public function deleteProduct (Request $request){
        try {
            // $user = User::where(['username' => $request->username, 'password' => $request->password])->first();
            // if(isset($user) && $user->permission === 1){
            $product = Product::where(['id' => $request->id])->first();
            if(!isset($product)){
                throw new  \Exception('Sản phẩm không tồn tại!');
            }
            $product->delete();
            return response()->json([
                "status" => true,
                "msg" => "Xóa sản phẩm thành công"
            ]);
            // }else{
            //     throw new  \Exception('Bạn không có quyền xóa');
            // }

        } catch (\Exception $e) {
            return response()->json([
                "status" => false,
                "msg" => $e->getMessage()
            ]);
        }
    }
    public function createProduct (Request $request){
        try {
            $product = Product::create([
                "name" => $request->name,
                "id_category" => $request->category,
                "price" => $request->price,
                "quantity" => $request->quantity,
                "description" => $request->description,
                "image" => json_encode($request->image)
            ]);
            return response()->json([
                "status" => true,
                "data" => $product
            ]);
        } catch (\Throwable $e) {
            return response()->json([
                "status" => false,
                "data" => '',
                "msg" => $e->getMessage()
            ]);
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
