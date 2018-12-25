.class public final Lru/rocketbank/core/widgets/CreditCardView$setBackground$1;
.super Ljava/lang/Object;
.source "CreditCardView.kt"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/CreditCardView;->setBackground(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/CreditCardView;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/CreditCardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView$setBackground$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 0

    .line 369
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1371
    iget-object p2, p0, Lru/rocketbank/core/widgets/CreditCardView$setBackground$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {p2, p1}, Lru/rocketbank/core/widgets/CreditCardView;->access$changeTextColor(Lru/rocketbank/core/widgets/CreditCardView;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    return p1
.end method
