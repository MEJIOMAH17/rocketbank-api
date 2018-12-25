.class public final Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChargesListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/charges/ChargesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private date:Landroid/widget/TextView;

.field private description:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 347
    sget v0, Lru/rocketbank/r2d2/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "itemView.title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 348
    sget v0, Lru/rocketbank/r2d2/R$id;->date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "itemView.date"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 349
    sget v0, Lru/rocketbank/r2d2/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "itemView.description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getDate$App_prodRelease()Landroid/widget/TextView;
    .locals 1

    .line 348
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->date:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDescription$App_prodRelease()Landroid/widget/TextView;
    .locals 1

    .line 349
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTitle$App_prodRelease()Landroid/widget/TextView;
    .locals 1

    .line 347
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setDate$App_prodRelease(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->date:Landroid/widget/TextView;

    return-void
.end method

.method public final setDescription$App_prodRelease(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method

.method public final setTitle$App_prodRelease(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method
