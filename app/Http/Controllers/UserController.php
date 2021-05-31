<?php

namespace App\Http\Controllers;

use App\User;
use Error;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(User $user)
    {
        return response()->json($user::all(), 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(User $user, Request $request)
    {
        try {
            $user::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => $request->password
            ]);
            return response()->json('Data berhasil di-input!', 200);

        } catch (Error $e) {
            return response()->json('Data gagal di-input!', 400);
        }
    }

    public function edit($id)
    {
        // try {
            $user = User::findOrFail($id);
            return response()->json($user, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // try {
            $user = User::findOrFail($id);
            $user->update([
                'name' => $request->name,
                'email' => $request->email,
                // 'password' => $request->password,
            ]);
            return response()->json('Data berhasil di-update!', 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
            $user = User::findOrFail($id);
            $user->delete();

            if ($user) {
                return response()->json('Data berhasil dihapus!', 200);
            } else {
                return response()->json('Data gagal dihapus!', 400);
            }
    }
}
