.class final Lru/rocketbank/core/widgets/TagAutoCompleteEditText$init$1;
.super Ljava/lang/Object;
.source "TagAutoCompleteEditText.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->init(Landroid/util/AttributeSet;Landroid/content/Context;)V
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
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$init$1;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1078
    iget-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$init$1;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    invoke-static {p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->access$loadTags(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;)V

    return-void
.end method
