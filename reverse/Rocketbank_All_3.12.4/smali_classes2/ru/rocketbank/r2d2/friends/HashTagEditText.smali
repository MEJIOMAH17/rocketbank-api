.class public Lru/rocketbank/r2d2/friends/HashTagEditText;
.super Lru/rocketbank/core/widgets/TagAutoCompleteEditText;
.source "HashTagEditText.java"


# instance fields
.field private mAdditionalHashTagChars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mHashTagWordColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x5f

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mAdditionalHashTagChars:Ljava/util/List;

    const/16 p1, 0x21

    const/16 v0, 0x96

    const/16 v1, 0xf3

    .line 26
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mHashTagWordColor:I

    .line 30
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x5f

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mAdditionalHashTagChars:Ljava/util/List;

    const/16 p1, 0x21

    const/16 p2, 0x96

    const/16 v0, 0xf3

    .line 26
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mHashTagWordColor:I

    .line 35
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x5f

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mAdditionalHashTagChars:Ljava/util/List;

    const/16 p1, 0x21

    const/16 p2, 0x96

    const/16 p3, 0xf3

    .line 26
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mHashTagWordColor:I

    .line 40
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x5f

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mAdditionalHashTagChars:Ljava/util/List;

    const/16 p1, 0x21

    const/16 p2, 0x96

    const/16 p3, 0xf3

    .line 26
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mHashTagWordColor:I

    .line 45
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->init()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/HashTagEditText;Ljava/lang/CharSequence;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/HashTagEditText;->eraseAndColorizeAllText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private eraseAndColorizeAllText(Ljava/lang/CharSequence;)V
    .locals 8

    .line 79
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 81
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/CharacterStyle;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    .line 82
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 83
    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/Utils;->replaceHashWithUrls(Ljava/lang/String;Lru/rocketbank/r2d2/Utils$OperationListener;)Landroid/text/SpannableString;

    move-result-object v1

    .line 87
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-virtual {v1, v3, p1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/CharacterStyle;

    .line 88
    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 89
    invoke-virtual {v1, v4}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v4}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1, v4}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private findNextValidHashTagChar(Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 118
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ge p2, v1, :cond_3

    .line 120
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 122
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mAdditionalHashTagChars:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v1, v0

    :goto_2
    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move p2, v2

    :goto_3
    if-ne p2, v2, :cond_4

    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_4
    return p2
.end method

.method private init()V
    .locals 1

    .line 57
    new-instance v0, Lru/rocketbank/r2d2/friends/HashTagEditText$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/HashTagEditText$1;-><init>(Lru/rocketbank/r2d2/friends/HashTagEditText;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private setColorForHashTagToTheEnd(II)V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mHashTagWordColor:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    .line 143
    invoke-interface {v0, v1, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setColorsToAllHashTags(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 101
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_0

    .line 106
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/friends/HashTagEditText;->findNextValidHashTagChar(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 108
    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/friends/HashTagEditText;->setColorForHashTagToTheEnd(II)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public varargs setAdditionalHashTagChars([Ljava/lang/Character;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mAdditionalHashTagChars:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setmHashTagWordColor(I)V
    .locals 0

    .line 53
    iput p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText;->mHashTagWordColor:I

    return-void
.end method
