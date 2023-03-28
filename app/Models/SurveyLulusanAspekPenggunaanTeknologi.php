<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SurveyLulusanAspekPenggunaanTeknologi extends Model
{
    use HasFactory;
    protected $table = 'survey_lulusan_aspek_penggunaan_teknologi';
    protected $fillable = [
        'no',
        'survey',
        'pilihan',
        'ganda',
        'other',
        'wajib'
    ];
}
