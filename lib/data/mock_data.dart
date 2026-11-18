import 'models.dart';

class MockData {
  static const reviews = [
    ReviewData(
      id: 'r1',
      authorName: 'Camila R.',
      authorAvatarUrl:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=200&h=200&auto=format&fit=crop',
      rating: 5,
      comment:
          'Calidad impecable. El corte cae perfecto y se siente premium desde el primer uso.',
      likes: 24,
      timeAgo: '2 días',
    ),
    ReviewData(
      id: 'r2',
      authorName: 'Diego M.',
      authorAvatarUrl:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=200&h=200&auto=format&fit=crop',
      rating: 4,
      comment:
          'Muy buena prenda. Solo le faltaría una talla intermedia entre M y L.',
      likes: 11,
      timeAgo: '5 días',
    ),
  ];

  static const abrigoNegro = ArticleInfo(
    id: 'abrigo_negro',
    title: 'Abrigo Lunar Negro',
    brand: "Maison de l'Éther",
    price: '2.450€',
    categoryTag: 'Prenda',
    colorName: 'Nebulosity Dark',
    categoryName: 'Outerwear Elite',
    description:
        'Una pieza maestra de sastrería contemporánea diseñada para ofrecer máxima elegancia y confort térmico.',
    imageUrl:
        'https://images.unsplash.com/photo-1539533018447-63fcce2678e3?q=80&w=800&auto=format&fit=crop',
    averageRating: 4.9,
    reviewsCount: 128,
    aiSummary:
        'Los usuarios destacan el corte impecable, la calidez del tejido y la versatilidad para looks formales nocturnos.',
    reviews: reviews,
  );

  static const detailSuit = ArticleInfo(
    id: 'post_suit_1',
    title: 'Suit elegante negro',
    brand: 'Atelier Noir',
    price: '890€',
    categoryTag: 'Outfit',
    colorName: 'Noche Intensa',
    categoryName: 'Sastrería',
    description:
        'Este traje define la elegancia y minimalismo con sus cortes precisos. Ideal para eventos formales donde la sobriedad es la clave.',
    imageUrl:
        'https://i.pinimg.com/564x/0b/71/5d/0b715d6e24e6a80caf83ebaebac322ce.jpg',
    averageRating: 4.8,
    reviewsCount: 124,
    aiSummary:
        'Resumen IA: look formal sobrio, muy valorado por su silueta limpia y acabados premium.',
    reviews: reviews,
  );

  static const detailVestido = ArticleInfo(
    id: 'post_vestido_2',
    title: 'Vestido blanco largo',
    brand: 'Casa Lumière',
    price: '620€',
    categoryTag: 'Prenda',
    colorName: 'Blanco Perla',
    categoryName: 'Vestidos',
    description:
        'Este vestido es la muestra de que no se necesita algo extravagante para brillar. Tela ligera y fresca para el verano.',
    imageUrl: 'https://m.media-amazon.com/images/I/41VWMm4OlpL.jpg',
    averageRating: 4.5,
    reviewsCount: 89,
    reviews: reviews,
  );

  static const detailCozy = ArticleInfo(
    id: 'post_cozy_3',
    title: 'Outfit cotidiano cozy',
    brand: 'Retro Denim Co.',
    price: '240€',
    categoryTag: 'Outfit',
    colorName: 'Azul Desgastado',
    categoryName: 'Vintage',
    description:
        'Una pieza única recuperada de los años 90. El desgaste natural le da un carácter que ninguna prenda nueva puede imitar.',
    imageUrl:
        'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?q=80&w=600&auto=format&fit=crop',
    averageRating: 4.9,
    reviewsCount: 210,
    reviews: reviews,
  );

  static const detailAccesorios = ArticleInfo(
    id: 'post_acc_4',
    title: 'Accesorios dorados',
    brand: 'Aurum Atelier',
    price: '1.150€',
    categoryTag: 'Prenda',
    colorName: 'Oro 18k',
    categoryName: 'Joyería',
    description:
        'Complementos que elevan cualquier outfit básico. Joyería artesanal con acabados en oro de 18k.',
    imageUrl:
        'https://images.unsplash.com/photo-1537832816519-689ad163238b?q=80&w=600&auto=format&fit=crop',
    averageRating: 4.7,
    reviewsCount: 56,
    reviews: reviews,
  );

  static const detailStreetwear = ArticleInfo(
    id: 'post_street_5',
    title: 'Streetwear urbano',
    brand: 'Urban Threads',
    price: '130€',
    categoryTag: 'Prenda',
    colorName: 'Gris Asfalto',
    categoryName: 'Streetwear',
    description:
        'Sudadera oversize combinada con joggers técnicos. La comodidad no está reñida con el estilo en la ciudad.',
    imageUrl:
        'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?q=80&w=600&auto=format&fit=crop',
    averageRating: 4.6,
    reviewsCount: 145,
    reviews: reviews,
  );

  static const detailPrimavera = ArticleInfo(
    id: 'post_primavera_6',
    title: 'Colección Primavera',
    brand: 'Fleur & Co.',
    price: '380€',
    categoryTag: 'Prenda',
    colorName: 'Multicolor Floral',
    categoryName: 'Colecciones',
    description:
        'Estampados florales y colores vibrantes para recibir la nueva estación. Tejidos transpirables y cortes fluidos.',
    imageUrl:
        'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?q=80&w=600&auto=format&fit=crop',
    averageRating: 4.4,
    reviewsCount: 78,
    reviews: reviews,
  );

  static const camisetaGymshark = ArticleInfo(
    id: 'camiseta_gymshark',
    title: 'Camiseta GymShark',
    brand: 'Gymshark',
    price: '45€',
    categoryTag: 'Prenda',
    colorName: 'Negro Carbón',
    categoryName: 'Activewear',
    description:
        'Diseño técnico de compresión ligera con tejido transpirable de secado rápido.',
    imageUrl:
        'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?q=80&w=600&auto=format&fit=crop',
    averageRating: 4.8,
    reviewsCount: 84,
  );

  static const allProducts = [
    abrigoNegro,
    camisetaGymshark,
    detailSuit,
    detailVestido,
    detailCozy,
    detailAccesorios,
    detailStreetwear,
    detailPrimavera,
  ];

  static const posts = [
    PostItem(
      id: '1',
      creatorName: 'Isabela',
      timeAgo: '2 horas',
      avatarUrl:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=200&h=200&auto=format&fit=crop',
      commentsCount: '42',
      tags: ['minimalista', 'otoño', 'black outfits'],
      product: detailSuit,
    ),
    PostItem(
      id: '2',
      creatorName: 'Mary Luz',
      timeAgo: '5 horas',
      avatarUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=200&h=200&auto=format&fit=crop',
      commentsCount: '18',
      tags: ['minimalista', 'verano', 'timeless'],
      product: detailVestido,
    ),
    PostItem(
      id: '3',
      creatorName: 'Ana',
      timeAgo: '1 día',
      avatarUrl:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=200&h=200&auto=format&fit=crop',
      commentsCount: '65',
      tags: ['vintage', 'denim', '90s'],
      product: detailCozy,
    ),
    PostItem(
      id: '4',
      creatorName: 'Elena Vancouvé',
      timeAgo: '3 horas',
      avatarUrl:
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=200&h=200&auto=format&fit=crop',
      commentsCount: '12',
      tags: ['joyería', 'luxury', 'detalles'],
      product: detailAccesorios,
    ),
  ];

  static const profile = ProfileData(
    email: 'elena@kloth.app',
    username: 'Elena Vancouvé',
    bio: 'Arquitecta de siluetas. Minimalista por naturaleza, moda por elección.',
    location: 'París, FR',
    website: 'vancouve.studio',
    profileImageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=400&h=400&auto=format&fit=crop',
    followersCount: 1280,
    followingCount: 342,
  );
}
