.class final Lru/rocketbank/r2d2/widgets/NotificationDialog$negativeOnClickListener$1;
.super Ljava/lang/Object;
.source "NotificationDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/NotificationDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/widgets/NotificationDialog$negativeOnClickListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/widgets/NotificationDialog$negativeOnClickListener$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/NotificationDialog$negativeOnClickListener$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/widgets/NotificationDialog$negativeOnClickListener$1;->INSTANCE:Lru/rocketbank/r2d2/widgets/NotificationDialog$negativeOnClickListener$1;

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

    .line 167
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
