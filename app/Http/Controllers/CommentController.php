<?php

namespace App\Http\Controllers;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
session_start();
class CommentController extends Controller
{
    public function comment(Request $request,$product_id){
        $data=array();
        $data['comment_text']=$request->comment_text;
        $data['customer_id']=Session::get('customer_id');
        $data['product_id']=$product_id;
        $comment_id=DB::table('tbl_comment')->insertGetId($data);
        Session::put('comment_id',$comment_id);
        return redirect('/');
    }
    public function all_comment(){
        $this->AdminAuthCheck();
        $all_comment_info = DB::table('tbl_comment')->get();
        $manage_comment = view('admin.all_comment')
        ->with('all_comment_info',$all_comment_info);
        return view('admin_layout')
        ->with('admin.all_comment',$manage_comment);
    }
    public function delete_comment($comment_id){
        DB::table('tbl_comment')
        ->where('comment_id',$comment_id)
        ->delete();
        Session::get('messege','comment Deleted seccessfully !');
        return Redirect::to('/all-comment');
    }
    public function AdminAuthCheck(){
        $admin_id=Session::get('admin_id');
        if($admin_id){
            return;
        }else{
            return Redirect::to('/admin')->send();
        }
    }
}
