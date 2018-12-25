.class final Lru/rocketbank/core/widgets/CreditCardView$changeTextColor$1;
.super Ljava/lang/Object;
.source "CreditCardView.kt"

# interfaces
.implements Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/CreditCardView;->changeTextColor(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreditCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreditCardView.kt\nru/rocketbank/core/widgets/CreditCardView$changeTextColor$1\n*L\n1#1,511:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/CreditCardView;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/CreditCardView;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView$changeTextColor$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGenerated(Landroid/support/v7/graphics/Palette;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 397
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$changeTextColor$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/CreditCardView;->onPalette(Landroid/support/v7/graphics/Palette;)V

    return-void

    :cond_0
    return-void
.end method
