class GoatsModel {
  String name;
  String category;
  String imageCard;
  List<String> imageCarousel;
  String description;

  GoatsModel({
    required this.name,
    required this.category,
    required this.imageCard,
    required this.imageCarousel,
    required this.description,
  });
  
  // Override operator == untuk membandingkan berdasarkan nilai, bukan referensi.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GoatsModel &&
        other.name == name &&
        other.category == category &&
        other.description == description &&
        other.imageCarousel == imageCarousel;
  }

  // Override hashCode untuk memastikan konsistensi dengan operator ==
  @override
  int get hashCode => name.hashCode ^ category.hashCode ^ description.hashCode ^ imageCarousel.hashCode;
}

var goatsList = [
  GoatsModel(
    name: 'Monkey D. Luffy', 
    category: 'One Piece', 
    imageCard: 'images/luffyImage/icLuffy.jpg', 
    imageCarousel: [
      'images/luffyImage/luffySatu.jpg',
      'images/luffyImage/luffyDua.jpg',
      'images/luffyImage/luffyTiga.jpg',
    ], 
    description: 'Luffy, seorang petualang muda dengan topi jerami khasnya, memulai perjalanan epik untuk menemukan harta karun legendaris, One Piece. Sepanjang perjalanannya, ia mengumpulkan kru yang unik dan menghadapi berbagai tantangan berbahaya. Dengan semangat yang tak pernah padam, Luffy terus berlayar menuju mimpinya menjadi Raja Bajak Laut.',
  ),
  GoatsModel(
    name: 'Lelouch Lamperouge', 
    category: 'Code Geass', 
    imageCard: 'images/lelouchImage/iconLelouch.jpg', 
    imageCarousel: [
      'images/lelouchImage/lelouchSatu.jpg',
      'images/lelouchImage/lelouchDua.jpg',
      'images/lelouchImage/lelouchTiga.jpg',
    ], 
    description: 'Lelouch Lamperouge, seorang pangeran Britania yang terasing, memendam dendam mendalam terhadap kekaisarannya. Dengan menggunakan kekuatan misterius bernama Geass, ia menyamar sebagai Zero, pemimpin pemberontakan, dan berusaha menggulingkan kekaisaran serta menciptakan dunia yang lebih baik.',
  ),
  GoatsModel(
    name: 'Edward Elric', 
    category: 'Fullmetal Alchemist: Brotherhood', 
    imageCard: 'images/elricImage/elricIcon.jpg', 
    imageCarousel: [
      'images/elricImage/elricSatu.jpg',
      'images/elricImage/elricDua.jpg',
      'images/elricImage/elricTiga.jpg',
    ], 
    description: 'Edward Elric, seorang alkemis negara termuda, adalah sosok yang cerdas dan ambisius. Setelah kehilangan lengan kanan dan kaki kirinya dalam upaya menghidupkan kembali ibunya, ia bertekad untuk mengembalikan tubuh adiknya, Alphonse. Dengan semangat pantang menyerah, Edward menjelajahi dunia untuk mencari cara mengembalikan segala sesuatu yang telah hilang.',
  ),
  GoatsModel(
    name: 'Sakata Gintoki', 
    category: 'Gintama Series', 
    imageCard: 'images/gintokiImage/iconGintama.jpg', 
    imageCarousel: [
      'images/gintokiImage/gintamaSatu.jpg',
      'images/gintokiImage/gintamaDua.jpg',
      'images/gintokiImage/gintamaTiga.jpg',
    ], 
    description: 'Sakata Gintoki, seorang samurai malas dan pecinta manis, hidup di era Edo yang telah dikuasai alien. Dengan penampilannya yang acak-acakan dan sifatnya yang santai, Gintoki seringkali terlihat seperti orang yang tidak peduli. Namun, di balik sikapnya yang acuh tak acuh, ia memiliki hati yang baik dan selalu siap membantu teman-temannya.',
  ),
  GoatsModel(
    name: 'Naruto Uzumaki', 
    category: 'Naruto Series', 
    imageCard: 'images/narutoImage/icNaruto.jpg', 
    imageCarousel: [
      'images/narutoImage/narutoSatu.jpg',
      'images/narutoImage/narutoDua.jpg',
      'images/narutoImage/narutoTiga.jpg',
    ], 
    description: 'Naruto Uzumaki, seorang ninja riang dari Desa Konoha, memiliki ambisi besar untuk menjadi Hokage. Disebabkan oleh segel Sembilan-Ekor yang ada di dalam dirinya, Naruto seringkali dikucilkan oleh penduduk desa. Namun, dengan semangat pantang menyerah, Naruto berusaha mendapatkan pengakuan dan membuktikan bahwa dirinya layak menjadi seorang pahlawan',
  ),
  GoatsModel(
    name: 'Son Goku', 
    category: 'Dragon Ball Series', 
    imageCard: 'images/gokuImage/gokuIcon.jpg', 
    imageCarousel: [
      'images/gokuImage/gokuSatu.jpg',
      'images/gokuImage/gokuDua.jpg',
      'images/gokuImage/gokuTiga.jpg',
    ], 
    description: 'Son Goku, seorang Saiyan yang tumbuh besar di Bumi, adalah seorang petarung yang kuat dan ceria. Dengan semangat juang yang tinggi, Goku selalu mencari lawan yang lebih kuat untuk dihadapi. Impiannya untuk menjadi yang terkuat di alam semesta mendorongnya untuk terus berlatih dan menjelajahi berbagai planet.',
  ),
  GoatsModel(
    name: 'Roronoa Zoro', 
    category: 'One Piece', 
    imageCard: 'images/zoroImage/zoroIcon.jpg', 
    imageCarousel: [
      'images/zoroImage/zoroSatu.jpg',
      'images/zoroImage/zoroDua.jpg',
      'images/zoroImage/zoroTiga.jpg',
    ], 
    description: 'Roronoa Zoro, seorang pemburu bajak laut dengan tiga pedang, adalah salah satu anggota kru Topi Jerami. Dengan ambisi menjadi pendekar pedang terkuat di dunia, Zoro selalu mencari pertarungan yang menantang. Kesetiaannya pada Luffy dan kru tak tertandingi, membuatnya menjadi pilar kekuatan kelompok.',
  ),
  GoatsModel(
    name: 'Vegeta', 
    category: 'Dragon Ball Series', 
    imageCard: 'images/vegetaImage/vegetaIcon.jpg', 
    imageCarousel: [
      'images/vegetaImage/vegetaSatu.jpg',
      'images/vegetaImage/vegetaDua.jpg',
      'images/vegetaImage/vegetaTiga.jpg',
    ], 
    description: 'Vegeta, seorang pangeran Saiyan yang bangga, awalnya adalah seorang penjahat yang haus akan kekuatan. Namun, seiring berjalannya waktu, Vegeta mengalami perkembangan karakter yang signifikan. Ia mulai menghargai persahabatan dan keluarga, meskipun tetap mempertahankan sikap bangganya.',
  ),
];