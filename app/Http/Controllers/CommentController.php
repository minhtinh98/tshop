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
    public function comment(Request $request){
        $data=array();
        $data['comment_text']=$request->comment_text;
        $comment_id=DB::table('tbl_comment')->insertGetId($data);
        Session::put('comment_id',$comment_id);
        return redirect('/');
    }
}
