<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SurveyLulusanAspekKemampuanBerbahasaAsing extends Model
{
    use HasFactory;
    protected $table = 'survey_lulusan_aspek_kemampuan_berbahasa_asing';
    protected $fillable = [
        'no',
        'survey',
        'pilihan',
        'ganda',
        'other',
        'wajib'
    ];
}
