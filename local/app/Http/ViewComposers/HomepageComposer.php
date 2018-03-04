<?php

namespace App\Http\ViewComposers;

use App\Repositories\Homepage\HomepageRepository;
use Illuminate\View\View;

class HomepageComposer
{
    public $emps;

    /**
     * Create a movie composer.
     *
     * @return void
     */
    public function __construct(HomepageRepository $home)
    {
        $this->emps = $home->getAllEmps();
    }

    /**
     * Bind data to the view.
     *
     * @param  View $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with('emps', $this->emps);
    }
}