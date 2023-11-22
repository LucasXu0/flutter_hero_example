enum CardHeroTag {
  header,
  detail;

  String get name {
    return switch (this) {
      CardHeroTag.header => 'header',
      CardHeroTag.detail => 'detail',
    };
  }
}

String cardHeroTag(CardHeroTag tag, {String? external}) {
  return tag.name + (external ?? '');
}
