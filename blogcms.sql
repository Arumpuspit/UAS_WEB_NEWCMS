-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 22 Jun 2024 pada 10.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogcms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Healty Food', 'This is Healty Food category'),
(2, 'Cake', 'This is Cake category'),
(7, 'Snack', 'This is Snack category'),
(8, 'Traditional Food', 'This is Traditional Food category');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(31, 'Simple pineapple cake recipe', 'Here is the recipe for Nastar cookies:\r\n\r\nIngredients:\r\n- 350 grams low-protein flour\r\n- 50 grams corn starch\r\n- 200 grams margarine\r\n- 50 grams butter\r\n- 100 grams powdered sugar\r\n- 2 egg yolks\r\n- 2 egg yolks for brushing\r\n- 1/2 teaspoon vanilla powder\r\n- Grated cheese as needed (optional)\r\n\r\nFor the filling:\r\n- 2 pineapples, grated\r\n- 200 grams sugar\r\n- 3 cloves\r\n- 1 cinnamon stick\r\n\r\nInstructions:\r\n\r\n1. Making pineapple jam:\r\n   1. Grate the peeled pineapples.\r\n   2. Cook the grated pineapples in a pan over medium heat until the liquid reduces.\r\n   3. Add sugar, cloves, and cinnamon stick. Stir continuously until the jam thickens and can be shaped. Remove from heat, cool, and shape the jam according to the desired size for the nastar filling.\r\n\r\n2. Making the nastar dough:\r\n   1. In a bowl, mix margarine, butter, and powdered sugar. Beat with a mixer until soft and well combined.\r\n   2. Add the egg yolks one by one while continuing to beat.\r\n   3. Add the vanilla powder.\r\n   4. Gradually add the flour and corn starch while stirring with a spatula until the dough can be shaped.\r\n   5. Take a small piece of dough, flatten it, place the pineapple jam in the center, then roll it into a ball.\r\n   6. Place on a baking tray that has been greased with margarine or lined with baking paper.\r\n\r\n3. Brushing and baking:\r\n   1. Beat the 2 egg yolks for brushing.\r\n   2. Brush the nastar cookies with the beaten egg yolk.\r\n   3. Sprinkle grated cheese on top if desired.\r\n   4. Bake in a preheated oven at 160&deg;C (320&deg;F) for 20-30 minutes until cooked and golden brown.\r\n   5. Remove the nastar cookies and let them cool before storing in a jar.\r\n\r\nEnjoy making Nastar cookies!', '1718896038Nastar.jpg', '2024-06-20 08:07:18', 2, 14, 0),
(32, 'A simple recipe for double chocolate soft cookies', 'Here&#039;s a simple recipe for double chocolate soft cookies:\r\n\r\nIngredients:\r\n- 1 cup (230 grams) unsalted butter, softened\r\n- 1 cup (200 grams) granulated sugar\r\n- 1 cup (220 grams) packed brown sugar\r\n- 2 large eggs\r\n- 1 teaspoon vanilla extract\r\n- 1 3/4 cups (220 grams) all-purpose flour\r\n- 1/2 cup (40 grams) unsweetened cocoa powder\r\n- 1 teaspoon baking soda\r\n- 1/2 teaspoon salt\r\n- 2 cups (340 grams) semi-sweet chocolate chips\r\n\r\nInstructions:\r\n\r\n1. Preheat Oven:\r\n   - Preheat your oven to 350&deg;F (175&deg;C). Line a baking sheet with parchment paper or a silicone baking mat.\r\n\r\n2. Prepare Wet Ingredients:\r\n   - In a large mixing bowl, cream together the softened butter, granulated sugar, and brown sugar until light and fluffy.\r\n   - Add in the eggs one at a time, beating well after each addition.\r\n   - Stir in the vanilla extract.\r\n\r\n3. Prepare Dry Ingredients:\r\n   - In a separate bowl, whisk together the flour, unsweetened cocoa powder, baking soda, and salt.\r\n\r\n4. Combine Ingredients:\r\n   - Gradually add the dry ingredients to the wet mixture, mixing just until combined.\r\n   - Fold in the chocolate chips.\r\n\r\n5. **Form Cookies:**\r\n   - Using a cookie scoop or spoon, drop rounded tablespoonfuls of dough onto the prepared baking sheet, spacing them about 2 inches apart.\r\n\r\n6. Bake:\r\n   - Bake in the preheated oven for 8-10 minutes, or until the cookies are set but still soft in the center. Avoid overbaking to keep the cookies soft.\r\n\r\n7. Cool:\r\n   - Let the cookies cool on the baking sheet for a few minutes before transferring them to a wire rack to cool completely.\r\n\r\nTips:\r\n- For extra softness, you can add a tablespoon of cornstarch to the dry ingredients.\r\n- You can also mix in different types of chocolate chips (e.g., milk chocolate, dark chocolate) for added variety.\r\n\r\nEnjoy your homemade double chocolate soft cookies!', '1718898070Double Coklat.jpg', '2024-06-20 08:41:10', 2, 14, 0),
(33, 'Klepon cake recipe, missed', 'Here&#039;s a simple Klepon Cake recipe:\r\n\r\n**Ingredients:**\r\n- **For the Cake:**\r\n  - 200 grams all-purpose flour\r\n  - 200 grams granulated sugar\r\n  - 1 teaspoon baking powder\r\n  - 1/2 teaspoon baking soda\r\n  - 1/2 teaspoon salt\r\n  - 100 grams unsalted butter, softened\r\n  - 2 large eggs\r\n  - 200 ml coconut milk\r\n  - 1 teaspoon pandan extract\r\n  - A few drops of green food coloring (optional)\r\n\r\n- **For the Filling:**\r\n  - 200 grams grated coconut\r\n  - 150 grams palm sugar, finely chopped\r\n\r\n- **For the Topping:**\r\n  - 100 ml coconut milk\r\n  - 1 tablespoon cornstarch\r\n  - 2 tablespoons sugar\r\n  - 100 grams grated coconut for sprinkling\r\n\r\n**Instructions:**\r\n\r\n1. **Preheat Oven:**\r\n   - Preheat your oven to 175&deg;C (350&deg;F). Grease and flour a round or square cake pan.\r\n\r\n2. **Prepare the Cake Batter:**\r\n   - In a mixing bowl, combine the flour, sugar, baking powder, baking soda, and salt.\r\n   - Add the softened butter and mix with an electric mixer until it forms a crumbly mixture.\r\n   - Add the eggs, coconut milk, pandan extract, and green food coloring (if using). Mix until the batter is well combined and smooth.\r\n\r\n3. **Bake the Cake:**\r\n   - Pour the batter into the prepared cake pan.\r\n   - Bake for 30-35 minutes or until a toothpick inserted into the center of the cake comes out clean.\r\n   - Remove the cake from the oven and let it cool in the pan for 10 minutes, then transfer to a wire rack to cool completely.\r\n\r\n4. **Prepare the Filling:**\r\n   - In a small saucepan, melt the finely chopped palm sugar over low heat.\r\n   - Add the grated coconut and cook until the mixture thickens and combines well. Set aside to cool.\r\n\r\n5. **Prepare the Topping:**\r\n   - In a small saucepan, combine the coconut milk, cornstarch, and sugar. Cook over medium heat, stirring constantly, until the mixture thickens. Remove from heat and let it cool.\r\n\r\n6. **Assemble the Cake:**\r\n   - Once the cake is completely cool, slice it horizontally into two layers.\r\n   - Spread the coconut and palm sugar filling evenly over the bottom layer, then place the top layer back on.\r\n   - Spread the thickened coconut milk topping over the top of the cake.\r\n   - Sprinkle generously with grated coconut.\r\n\r\n7. **Serve:**\r\n   - Slice the cake and serve. Enjoy the unique flavor of Klepon Cake!\r\n\r\nThis recipe combines the delightful taste of traditional Indonesian klepon in a cake form, perfect for a special treat or celebration. Enjoy!', '1718898229082336300_1602549870-istock-1145447456-copy_ratio-16x9.jpg', '2024-06-20 08:43:49', 8, 14, 0),
(34, 'Simple home fries recipe', 'Certainly! Here&#039;s a simple recipe for homemade home fries:\r\n\r\n### Simple Home Fries Recipe\r\n\r\n**Ingredients:**\r\n- 4 medium-sized russet or Yukon gold potatoes, peeled and diced into 1/2-inch cubes\r\n- 1 medium onion, finely chopped\r\n- 1 green bell pepper, chopped (optional)\r\n- 3 tablespoons vegetable oil or olive oil\r\n- 1 teaspoon paprika\r\n- Salt and black pepper to taste\r\n- Fresh parsley, chopped (for garnish, optional)\r\n\r\n**Instructions:**\r\n\r\n1. **Prepare the Potatoes:**\r\n   - Place the diced potatoes into a large pot and cover with cold water. Add a pinch of salt and bring to a boil over medium-high heat.\r\n   - Boil the potatoes for about 5 minutes, or until they just start to become tender. You don&rsquo;t want them fully cooked. Drain them well and set aside.\r\n\r\n2. **Cook the Onions and Bell Peppers (if using):**\r\n   - In a large skillet, heat 1 tablespoon of oil over medium heat.\r\n   - Add the chopped onions (and bell pepper if using) and saut&eacute; until they are soft and translucent, about 5 minutes. Remove from the skillet and set aside.\r\n\r\n3. **Cook the Potatoes:**\r\n   - In the same skillet, add the remaining 2 tablespoons of oil and heat over medium-high heat.\r\n   - Add the drained potatoes to the skillet in a single layer. Let them cook undisturbed for about 3-4 minutes until they start to get golden and crispy on one side.\r\n   - Flip the potatoes and cook for another 3-4 minutes to brown the other side. Continue to cook and stir occasionally until the potatoes are golden brown and crispy all over.\r\n\r\n4. **Combine and Season:**\r\n   - Reduce the heat to medium. Add the saut&eacute;ed onions and bell peppers back to the skillet with the potatoes.\r\n   - Sprinkle with paprika, salt, and black pepper. Toss everything together gently to combine and allow the flavors to meld, cooking for an additional 2-3 minutes.\r\n\r\n5. **Serve:**\r\n   - Garnish with fresh parsley if desired.\r\n   - Serve hot as a side dish for breakfast, alongside eggs, bacon, or any other breakfast favorites.\r\n\r\nEnjoy your simple and delicious homemade home fries!', '1718898467c77f4f72-68e2-4d59-8b40-79bbde71863c.jpeg', '2024-06-20 08:47:47', 7, 15, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(13, 'Arum', 'Puspita', 'arumpuspita', 'aparumpuspita@gmail.com', '$2y$10$FGvt41xKy3qQYYVtTb5p8uHVSPJle2zSoQsGciSCuHYWYfTFirHZm', '1718211407Desain tanpa judul (1).jpg', 0),
(14, 'Arum', 'Puspita', 'arumini', 'arumpuspita@gmail.com', '$2y$10$z2TK4PzTGsxevD05OTMWwO34ZkmJFbraiSvPakzTxwakXAcAQER9C', '1718895811Desain tanpa judul (1).png', 0),
(15, 'Faiza', 'Arifahh', 'Faiza', 'arifaiza@gmail.com', '$2y$10$gGdcFS/eYt4gpIuZC9RnUef1qh/CL83Co64TFBrpg2QJ9syuOyx3u', '17188983271.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
