.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$1$2;
.super Ljava/lang/Object;
.source "CardDetailFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/CardDetailFragment;->showSpayUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$1$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$1$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$1$2;->INSTANCE:Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 308
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
