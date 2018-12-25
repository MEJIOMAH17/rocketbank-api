.class final Lru/rocketbank/r2d2/Utils$1;
.super Lru/rocketbank/core/widgets/text/ClickableHashTagSpan;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/Utils;->replaceHashWithUrls(Ljava/lang/String;Lru/rocketbank/r2d2/Utils$OperationListener;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lru/rocketbank/r2d2/Utils$OperationListener;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(ILru/rocketbank/r2d2/Utils$OperationListener;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p2, p0, Lru/rocketbank/r2d2/Utils$1;->val$callback:Lru/rocketbank/r2d2/Utils$OperationListener;

    iput-object p3, p0, Lru/rocketbank/r2d2/Utils$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/text/ClickableHashTagSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 123
    iget-object p1, p0, Lru/rocketbank/r2d2/Utils$1;->val$callback:Lru/rocketbank/r2d2/Utils$OperationListener;

    iget-object v0, p0, Lru/rocketbank/r2d2/Utils$1;->val$tag:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/Utils$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/Utils$OperationListener;->onTagClicked(Ljava/lang/String;)V

    return-void
.end method
