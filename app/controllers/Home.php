<?php

namespace App\Controllers;

use Core\View;
use app\models\sumbangan;
class Home extends \Core\Controller
{
    public function index()
    {
        $temp = sumbangan::getName();
        View::renderTemplate("home/index.html", [
            'judul' => 'Donasi ',
            'jenis' => $temp
        ]);
    }

    public function inputdata()
    {   
        $errHand = "";
        $tipeSumbang = $_POST['jenisSumbangan'];
        $total = $_POST['jumlah'];
        if(!isset($_POST['submit'])) return;
        
        foreach($total as $tot){
            if($tot == "" || $tot == 0 ) $errHand = "jumlah sumbangan tidak boleh kosong";
        }
        foreach($tipeSumbang as $ts){
            if($ts == "") $errHand = "Jenis sumbangan tidak boleh kosong";
        }
        if($_POST['name'] == "") $errHand = "Nama tidak boleh kosong";
        if($errHand != ""){
            $temp = sumbangan::getName();
            View::renderTemplate("home/index.html", [
            'judul' => 'Sumbangan',
            'jenis' => $temp,
            'alert' => $errHand
        ]);
        return;
        }

        if(!isset($_POST['submit'])) return;

        $userid = sumbangan::setUser( $_POST['name'], $_POST['gender'] );
        
        $iter = 0;

        foreach($tipeSumbang as $ts){
            $tsid = sumbangan::isThere($ts);

            if( $tsid >= 1){
                $done = sumbangan::setSumbangan($userid,$tsid,$total[$iter]);
            }
            else{
                $tsid = sumbangan::setJS($ts);
                $done = sumbangan::setSumbangan($userid, $tsid[0], $total[$iter]);
            }
            $iter++;
        }
        $temp = sumbangan::getName();
        View::renderTemplate("home/index.html", [
            'judul' => 'Donasi',
            'jenis' => $temp,
            'pesan' => 'Terima kasih telah menyumbang, Sumbangan anda bertemp terkirim',
        ]);

    }
}