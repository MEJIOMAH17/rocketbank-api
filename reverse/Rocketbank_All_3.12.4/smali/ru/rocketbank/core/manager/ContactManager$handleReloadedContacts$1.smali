.class final Lru/rocketbank/core/manager/ContactManager$handleReloadedContacts$1;
.super Ljava/lang/Object;
.source "ContactManager.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/manager/ContactManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/manager/ContactManager$handleReloadedContacts$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/manager/ContactManager$handleReloadedContacts$1;

    invoke-direct {v0}, Lru/rocketbank/core/manager/ContactManager$handleReloadedContacts$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/ContactManager$handleReloadedContacts$1;->INSTANCE:Lru/rocketbank/core/manager/ContactManager$handleReloadedContacts$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lru/rocketbank/core/model/contact/Contact;

    check-cast p2, Lru/rocketbank/core/model/contact/Contact;

    .line 1223
    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p2}, Lru/rocketbank/core/model/contact/Contact;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
