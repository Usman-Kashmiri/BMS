<?php

namespace Database\Factories;

use App\Models\Author;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Book>
 */
class BookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name'  => $this->faker->colorName(),
            'active' => true,
            'edition' => $this->faker->numberBetween(1,10),
            'illutrations' => $this->faker->boolean,
            'pages' => $this->faker->numberBetween(100,5000),
        ];
    }
}
