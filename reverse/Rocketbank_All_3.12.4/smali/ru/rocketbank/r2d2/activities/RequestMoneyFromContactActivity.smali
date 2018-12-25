.class public Lru/rocketbank/r2d2/activities/RequestMoneyFromContactActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "RequestMoneyFromContactActivity.java"


# static fields
.field private static final CONTACT_EXTRA:Ljava/lang/String; = "contact"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static startForResult(Landroid/app/Activity;Lru/rocketbank/core/model/contact/Contact;I)V
    .locals 2

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/RequestMoneyFromContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "contact"

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0055

    .line 27
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/RequestMoneyFromContactActivity;->setContentView(I)V

    return-void
.end method
