<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class HomeController extends Controller
{
    public function index(){
        // return view('pages.home_content');
        $all_published_product =DB::table('tbl_products')
                ->join('tbl_category','tbl_products.category_id','=','tbl_category.category_id')
                ->join('tbl_manufacture','tbl_products.manufacture_id','=','tbl_manufacture.manufacture_id')
                ->select('tbl_products.*','tbl_category.category_name','tbl_manufacture.manufacture_name')
                ->where('tbl_products.publication_status',1)
                ->limit(9)
                ->get();
        $manage_published_product = view('pages.home_content')
        ->with('all_published_product',$all_published_product);
        return view('layout')
        ->with('pages.home_content',$manage_published_product);
    }
    public function show_product_by_category($category_id){
        $product_by_category =DB::table('tbl_products')
                ->join('tbl_category','tbl_products.category_id','=','tbl_category.category_id')
                ->select('tbl_products.*','tbl_category.category_name')
                ->where('tbl_category.category_id',$category_id)
                ->where('tbl_products.publication_status', 1)
                ->limit(18)
                ->get();

        $category_name =DB::table('tbl_category')
                ->where('category_id', $category_id)
                ->first();

        $manage_product_by_category = view('pages.category_by_products')
        ->with('product_by_category',$product_by_category)->with('category_name',$category_name);
        return view('layout')
        ->with('pages.category_by_products',$manage_product_by_category);
    }
    public function show_product_by_manufacture($manufacture_id){
        $product_by_manufacture =DB::table('tbl_products')
                ->join('tbl_category','tbl_products.category_id','=','tbl_category.category_id')
                ->join('tbl_manufacture','tbl_products.manufacture_id','=','tbl_manufacture.manufacture_id')
                ->select('tbl_products.*','tbl_category.category_name','tbl_manufacture.manufacture_name')
                ->where('tbl_manufacture.manufacture_id',$manufacture_id)
                ->where('tbl_products.publication_status',1)
                ->limit(18)
                ->get();
        $manufacture_name =DB::table('tbl_manufacture')
                ->where('manufacture_id', $manufacture_id)
                ->first();
        $manage_published_product = view('pages.manufacture_by_products')
        ->with('product_by_manufacture',$product_by_manufacture)->with('manufacture_name',$manufacture_name);
        return view('layout')
        ->with('pages.manufacture_by_products',$manage_published_product);
    }
    public function product_details_by_id($product_id){
        $product_by_details =DB::table('tbl_products')
                ->join('tbl_category','tbl_products.category_id','=','tbl_category.category_id')
                ->join('tbl_manufacture','tbl_products.manufacture_id','=','tbl_manufacture.manufacture_id')
                ->select('tbl_products.*','tbl_category.category_name','tbl_manufacture.manufacture_name')
                ->where('tbl_products.product_id',$product_id)
                ->where('tbl_products.publication_status',1)
                ->first();
      $comment_by_product = DB::table('tbl_comment')
            ->join('customer','customer.customer_id','=','tbl_comment.customer_id')
            ->select('*', 'customer.customer_id as uid')
            ->where('tbl_comment.product_id',$product_id)
            ->limit(6)
            ->get();

        $manage_product_by_details = view('pages.product_details')
        ->with('product_by_details',$product_by_details)->with('comment_by_product',$comment_by_product);
        return view('layout')
        ->with('pages.product_details',$manage_product_by_details);
    }
}
