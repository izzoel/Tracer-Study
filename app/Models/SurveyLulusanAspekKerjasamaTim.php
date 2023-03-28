<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SurveyLulusanAspekKerjasamaTim extends Model
{
    use HasFactory;
    protected $table = 'survey_lulusan_aspek_kerjasama_tim';
    protected $fillable = [
        'no',
        'survey',
        'pilihan',
        'ganda',
        'other',
        'wajib'
    ];
}
