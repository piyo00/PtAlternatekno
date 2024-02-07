<?php namespace Alterna\Alternatekno\Models;

use Model;
use October\Rain\Database\Relations\AttachOne;

/**
 * Model
 */
class Portofolio extends Model
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
    public $table = 'alterna_alternatekno_portofolio';

    /**
     * @var array rules for validation.
     */
    public $rules = [
    ];

    /*relations*/

    public $attachOne = [
        'Icon' => 'System\Models\File'
    ];

}
