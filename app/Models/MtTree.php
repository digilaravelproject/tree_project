<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MtTree extends Model
{
    use HasFactory;

    protected $table = 'mt_trees';

    protected $fillable = [
        'project_id',
        'ward_plot_no',
        'tree_no',
        'tree_name',
        'scientific_name',
        'family',
        'girth',
        'height',
        'canopy',
        'age',
        'condition',
        'address',
        'landmark',
        'ownership',
        'concern_person',
        'remark',
        'tree_image_upload',
        'captured_image',
        'all_captured_images',
        'latitude',
        'longitude',
        'datetime',
    ];

    protected $casts = [
        'all_captured_images' => 'array',
    ];
    public function project()
    {
        return $this->belongsTo(Project::class, 'project_id');
    }
}
