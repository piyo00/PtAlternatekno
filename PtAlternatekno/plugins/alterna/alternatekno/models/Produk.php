<?php namespace Alterna\Alternatekno\Models;

use Model;

/**
 * Model
 */
class Produk extends Model
{
    use \October\Rain\Database\Traits\Validation;

    /**
     * @var bool timestamps are disabled.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;

    /**
     * @var string table in the database used by the model.
     */
    public $table = 'alterna_alternatekno_produk';

    /**
     * @var array rules for validation.
     */
    public $rules = [
    ];

    /*relations*/

    public $attachOne = [
        'gambar' => 'System\Models\File'
    ];

}
