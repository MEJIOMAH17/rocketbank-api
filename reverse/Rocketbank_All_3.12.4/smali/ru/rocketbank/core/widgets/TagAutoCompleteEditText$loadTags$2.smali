.class final Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$2;
.super Ljava/lang/Object;
.source "TagAutoCompleteEditText.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->loadTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$2;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 2

    .line 27
    check-cast p1, Ljava/util/List;

    .line 1086
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$2;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    const-string v1, "tags"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->onTagsLoaded(Ljava/util/List;)V

    return-void
.end method
