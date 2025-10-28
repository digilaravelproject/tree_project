<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\StateMaster;

class Project extends Model
{
    use HasFactory;

    protected $fillable = [
        'project_name',
        'state_id',
        'client_name',
        'company_name',
        'field_officer_id',
    ];

    public function state()
    {
        return $this->belongsTo(StateMaster::class, 'state_id');
    }

    public function fieldOfficer()
    {
        return $this->belongsTo(User::class, 'field_officer_id');
    }
    public function mtTree()
    {
        return $this->hasOne(MtTree::class, 'project_id');
    }
}
