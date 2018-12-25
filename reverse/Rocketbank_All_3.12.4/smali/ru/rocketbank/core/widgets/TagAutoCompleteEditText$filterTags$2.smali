.class final Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$2;
.super Ljava/lang/Object;
.source "TagAutoCompleteEditText.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->filterTags(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $tags:Ljava/util/List;

.field final synthetic this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$2;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    iput-object p2, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$2;->$tags:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$2;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    iget-object v1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$2;->$tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->updateAdapter(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$2;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->showDropDown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
