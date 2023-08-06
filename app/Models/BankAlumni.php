<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BankAlumni extends Model
{
    public $timestamps = true;
    use HasFactory;
    protected $table = 'bank_alumni';
    protected $guarded = [];
}
