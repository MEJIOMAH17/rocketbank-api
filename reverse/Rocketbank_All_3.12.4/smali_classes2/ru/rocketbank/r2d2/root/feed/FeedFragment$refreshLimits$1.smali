.class final Lru/rocketbank/r2d2/root/feed/FeedFragment$refreshLimits$1;
.super Ljava/lang/Object;
.source "FeedFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedFragment.kt\nru/rocketbank/r2d2/root/feed/FeedFragment$refreshLimits$1\n*L\n1#1,809:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/FeedFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, ""

    .line 341
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$getUserModel$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Lru/rocketbank/core/model/UserModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "\u0411\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0445 \u0441\u043d\u044f\u0442\u0438\u0439"

    .line 342
    invoke-virtual {v1, v2}, Lru/rocketbank/core/model/AccountModel;->getLimitByName(Ljava/lang/String;)Lru/rocketbank/core/model/LimitModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    .line 345
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 346
    iget-object v5, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-virtual {v5}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 347
    aget-object v3, v5, v3

    .line 349
    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getFreeCashOutLimit()I

    move-result v5

    if-lez v5, :cond_0

    .line 350
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    const v5, 0x7f110251

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lru/rocketbank/core/model/LimitModel;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getFreeCashOutLimit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    aput-object v3, v6, v4

    invoke-virtual {v0, v5, v6}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.left_\u2026eCashOutLimit, monthName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedFragment$refreshLimits$1;->this$0:Lru/rocketbank/r2d2/root/feed/FeedFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/feed/FeedFragment;->access$getBinding$p(Lru/rocketbank/r2d2/root/feed/FeedFragment;)Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    move-result-object v1

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;->atmFreeLeftView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    const-string v2, "binding.atmFreeLeftView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
