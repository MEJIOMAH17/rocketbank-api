.class final Lru/rocketbank/r2d2/charges/ChargesAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "ChargesListActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/ChargesAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;

.field final synthetic $intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$onBindViewHolder$1;->$holder:Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$onBindViewHolder$1;->$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 337
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$onBindViewHolder$1;->$holder:Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;

    iget-object p1, p1, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter$onBindViewHolder$1;->$intent:Landroid/content/Intent;

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargesAdapter;->Companion:Lru/rocketbank/r2d2/charges/ChargesAdapter$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/ChargesAdapter$Companion;->getREQUEST_CODE()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
