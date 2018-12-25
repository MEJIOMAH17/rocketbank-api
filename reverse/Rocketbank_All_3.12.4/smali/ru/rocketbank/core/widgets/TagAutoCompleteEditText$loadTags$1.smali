.class final Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$1;
.super Lkotlin/jvm/internal/PropertyReference1;
.source "TagAutoCompleteEditText.kt"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/KProperty1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$1;

    invoke-direct {v0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$1;->INSTANCE:Lkotlin/reflect/KProperty1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference1;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lru/rocketbank/core/network/model/TagsResponse;

    .line 85
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TagsResponse;->getTags()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "tags"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lru/rocketbank/core/network/model/TagsResponse;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getTags()Ljava/util/List;"

    return-object v0
.end method
