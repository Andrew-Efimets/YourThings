import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
    // server: {
    //     cors: true,
    //     host: '0.0.0.0',
    //     origin: 'https://yourthings.com',
    //     strictPort: true,
    // },
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/js/app.js',
                'resources/js/cart.js',
                'resources/js/create-product.js',
                'resources/js/timer.js',
                'resources/js/select-city.js',
                'resources/js/slider.js',
                'resources/js/stripe-handler.js'
            ],
            refresh: true,
        }),
        tailwindcss(),
    ],
});
