.class final Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$2;
.super Ljava/lang/Object;
.source "SmsConfirmationActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity;->showNetworkErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$2;->INSTANCE:Lru/rocketbank/r2d2/root/lead/SmsConfirmationActivity$showNetworkErrorDialog$2;

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

    const/4 p1, 0x0

    .line 294
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
