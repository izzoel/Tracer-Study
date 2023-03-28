<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SurveyLulusanAspekIntegritas extends Model
{
    use HasFactory;
    protected $table = 'survey_lulusan_aspek_integritas';
    protected $fillable = [
        'no',
        'survey',
        'pilihan',
        'ganda',
        'other',
        'wajib'
    ];
}
