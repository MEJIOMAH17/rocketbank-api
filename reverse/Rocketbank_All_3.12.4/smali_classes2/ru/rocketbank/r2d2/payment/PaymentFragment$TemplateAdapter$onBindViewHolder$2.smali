.class final Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter$onBindViewHolder$2;
.super Ljava/lang/Object;
.source "PaymentFragment.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter$onBindViewHolder$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter$onBindViewHolder$2;->call(Ljava/lang/Integer;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Integer;)Z
    .locals 2

    .line 281
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter$onBindViewHolder$2;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
