.class public Lru/rocketbank/r2d2/friends/TransferFriendUrlsFragment;
.super Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;
.source "TransferFriendUrlsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createMessageBody(JLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "%d %s"

    const/4 v1, 0x2

    .line 16
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\u0440\u0443\u0431\u043b\u044c"

    const-string v5, "\u0440\u0443\u0431\u043b\u044f"

    const-string v6, "\u0440\u0443\u0431\u043b\u0435\u0439"

    invoke-static {p1, p2, v3, v5, v6}, Lru/rocketbank/r2d2/Utils;->pluralForm(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u041f\u0440\u0438\u0432\u0435\u0442,\n\u0442\u0435\u0431\u0435 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u044b \u0434\u0435\u043d\u044c\u0433\u0438: %s. %s"

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p3, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected createMessageSubject(J)Ljava/lang/String;
    .locals 6

    const-string v0, "%d %s"

    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u0440\u0443\u0431\u043b\u044c"

    const-string v4, "\u0440\u0443\u0431\u043b\u044f"

    const-string v5, "\u0440\u0443\u0431\u043b\u0435\u0439"

    invoke-static {p1, p2, v2, v4, v5}, Lru/rocketbank/r2d2/Utils;->pluralForm(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u0422\u0435\u0431\u0435 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u044b \u0434\u0435\u043d\u044c\u0433\u0438: %s."

    .line 11
    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getInfoHeader()Ljava/lang/String;
    .locals 2

    .line 22
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/TransferFriendUrlsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
