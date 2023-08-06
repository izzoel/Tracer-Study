<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ResponEmail extends Model
{
    use HasFactory;
    protected $table = 'respon_email';
    protected $fillable = [
        'nim',
        'nama',
        'prodi',
        'angkatan',
        'kategori',
        'survey',
        'respon'
    ];
}
