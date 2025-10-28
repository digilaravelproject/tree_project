<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ScientificName extends Model
{
    protected $table = 'scientific_names'; // 👈 Table name
    protected $fillable = ['tree_id', 'scientific_name'];

    public function tree()
    {
        return $this->belongsTo(Tree::class);
    }
    public function mtTrees()
    {
        return $this->hasMany(MtTree::class, 'scientific_name', 'id');
    }
}
