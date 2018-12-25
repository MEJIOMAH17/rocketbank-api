.class public Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;
.super Lru/rocketbank/r2d2/friends/FriendsAdapter;
.source "InviteFriendsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$HeaderViewHolder;,
        Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;,
        Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;
    }
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_FRIEND_INVITED:I = 0x5

.field private static final ITEM_VIEW_TYPE_HEADER:I = 0x4


# instance fields
.field analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

.field authorization:Lru/rocketbank/core/user/Authorization;

.field private final header:Landroid/view/View;

.field private invitations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;"
        }
    .end annotation
.end field

.field moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private selectedContact:Lru/rocketbank/core/model/contact/Contact;

.field private selectedView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lrx/functions/Action2;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action2<",
            "Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;-><init>(Lrx/functions/Action2;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->selectedContact:Lru/rocketbank/core/model/contact/Contact;

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    .line 58
    iput-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->header:Landroid/view/View;

    .line 60
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 61
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 62
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;
    .locals 0

    .line 43
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->selectedView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$002(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->selectedView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Lru/rocketbank/core/model/contact/Contact;
    .locals 0

    .line 43
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->selectedContact:Lru/rocketbank/core/model/contact/Contact;

    return-object p0
.end method

.method static synthetic access$102(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/core/model/contact/Contact;)Lru/rocketbank/core/model/contact/Contact;
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->selectedContact:Lru/rocketbank/core/model/contact/Contact;

    return-object p1
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->showInviteButtons(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;Lru/rocketbank/core/model/contact/Contact;)V

    return-void
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->shareViaSms(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->shareViaEmail(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getShareText(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 306
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getUserData()Lru/rocketbank/core/realm/UserData;

    move-result-object v1

    const-string v2, "userData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    sget-object v2, Lru/rocketbank/core/model/enums/Cobrand;->Companion:Lru/rocketbank/core/model/enums/Cobrand$Companion;

    .line 2029
    invoke-virtual {v1}, Lru/rocketbank/core/realm/UserData;->realmGet$cobrandName()Ljava/lang/String;

    move-result-object v1

    .line 1043
    invoke-virtual {v2, v1}, Lru/rocketbank/core/model/enums/Cobrand$Companion;->fromCobrandName(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Cobrand;

    move-result-object v1

    .line 1011
    invoke-virtual {v1}, Lru/rocketbank/core/model/enums/Cobrand;->getMoney()I

    move-result v1

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getInvitationRevenue()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 310
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getInvites()Lru/rocketbank/core/model/InvitesModel;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/core/model/InvitesModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getInvitationRevenue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const v0, 0x7f11022b

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hasInvitations()Z
    .locals 1

    .line 325
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shareViaEmail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "android.intent.extra.SUBJECT"

    const-string v1, "\u041f\u0440\u0438\u0432\u0435\u0442!"

    .line 300
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    .line 301
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->getShareText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private shareViaSms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "sms_body"

    .line 294
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->getShareText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showInviteButtons(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 4

    .line 245
    invoke-virtual {p2}, Lru/rocketbank/core/model/contact/Contact;->getEmails()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lru/rocketbank/core/model/contact/Contact;->getEmails()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 246
    :goto_0
    invoke-virtual {p2}, Lru/rocketbank/core/model/contact/Contact;->getPhones()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lru/rocketbank/core/model/contact/Contact;->getPhones()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 248
    :goto_1
    iget-object p2, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInviteEmail:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 249
    iget-object p1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInviteSMS:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getFriend(I)Lru/rocketbank/core/model/contact/Contact;
    .locals 0

    .line 343
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getFriend(I)Lru/rocketbank/core/model/contact/Contact;

    move-result-object p1

    return-object p1
.end method

.method public getInvitationsCount()I
    .locals 1

    .line 329
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 334
    invoke-super {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getItemCount()I

    move-result v0

    .line 335
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->hasInvitations()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->getInvitationsCount()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 318
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->hasInvitations()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x5

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 321
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method protected hasRocketFriends()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isFirstInSection(I)Z
    .locals 1

    .line 223
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 226
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->hasInvitations()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 231
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->isFirstInSection(I)Z

    move-result p1

    return p1
.end method

.method protected isLastInSection(I)Z
    .locals 2

    .line 235
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 238
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->hasInvitations()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v0, p1, :cond_1

    return v1

    .line 241
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->isLastInSection(I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 78
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_4

    .line 85
    check-cast p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    sub-int/2addr p2, v4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/contact/InvitedFriend;

    if-nez v0, :cond_1

    return-void

    .line 90
    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/InvitedFriend;->getUser()Lru/rocketbank/core/model/contact/ServerContact;

    move-result-object v2

    .line 91
    iget-object v6, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->name:Landroid/widget/TextView;

    const-string v7, "%s %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lru/rocketbank/core/model/contact/ServerContact;->getFirstName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-virtual {v2}, Lru/rocketbank/core/model/contact/ServerContact;->getLastName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    invoke-virtual {v2}, Lru/rocketbank/core/model/contact/ServerContact;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lru/rocketbank/core/model/contact/ServerContact;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lru/rocketbank/core/model/contact/ServerContact;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v6, v2}, Lru/rocketbank/core/widgets/ContactAvatarView;->setContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/InvitedFriend;->getDisplayStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/InvitedFriend;->getDisplayStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 94
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/InvitedFriend;->getDisplayStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->description:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/InvitedFriend;->getRevenue()D

    move-result-wide v2

    const-wide/16 v6, 0x0

    .line 101
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->revenue:Landroid/widget/TextView;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    sget-object v4, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    invoke-virtual {v1, v2, v3, v4, v5}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->revenue:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 105
    :cond_3
    iget-object v0, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->revenue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_1
    iget-object p1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$1;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)V

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$2;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)V

    invoke-static {p2, p1, v0, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->addPadding(ILandroid/view/View;Lrx/functions/Func1;Lrx/functions/Func1;)V

    return-void

    .line 120
    :cond_4
    check-cast p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p2, v0

    sub-int/2addr v0, v4

    .line 122
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->getFriend(I)Lru/rocketbank/core/model/contact/Contact;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 126
    :cond_5
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->name:Landroid/widget/TextView;

    const-string v6, "%s %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getFirstName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getLastName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    invoke-virtual {v2, v0}, Lru/rocketbank/core/widgets/ContactAvatarView;->setContact(Lru/rocketbank/core/model/contact/Contact;)V

    .line 128
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInvite:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a8

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 133
    iget-object v3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->selectedContact:Lru/rocketbank/core/model/contact/Contact;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->selectedContact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v3}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide v6

    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getId()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_6

    .line 134
    iget-object v1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->menu:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->selectedContact:Lru/rocketbank/core/model/contact/Contact;

    invoke-direct {p0, p1, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->showInviteButtons(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;Lru/rocketbank/core/model/contact/Contact;)V

    .line 136
    iget-object v1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->menu:Landroid/view/ViewGroup;

    iput-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->selectedView:Landroid/view/ViewGroup;

    .line 137
    iget-object v1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_2

    .line 139
    :cond_6
    iget-object v3, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->menu:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    iget-object v1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->content:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 143
    :goto_2
    iget-object v1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInvite:Landroid/view/View;

    new-instance v3, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;

    invoke-direct {v3, p0, v0, p1, v2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/core/model/contact/Contact;Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->menu:Landroid/view/ViewGroup;

    new-instance v2, Lru/rocketbank/r2d2/friends/SwipeTouchListener;

    iget-object v3, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->menu:Landroid/view/ViewGroup;

    iget-object v5, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->menu:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$4;

    invoke-direct {v6, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$4;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)V

    invoke-direct {v2, v3, v5, v6}, Lru/rocketbank/r2d2/friends/SwipeTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lru/rocketbank/r2d2/friends/SwipeTouchListener$DismissCallbacks;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    iget-object v1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInviteSMS:Landroid/widget/ImageButton;

    new-instance v2, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$5;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$5;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/core/model/contact/Contact;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInviteEmail:Landroid/widget/ImageButton;

    new-instance v2, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$6;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$6;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/core/model/contact/Contact;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sub-int/2addr p2, v4

    .line 209
    iget-object p1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$7;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$7;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)V

    new-instance v1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$8;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$8;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)V

    invoke-static {p2, p1, v0, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->addPadding(ILandroid/view/View;Lrx/functions/Func1;Lrx/functions/Func1;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 68
    new-instance p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$HeaderViewHolder;

    iget-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->header:Landroid/view/View;

    invoke-direct {p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 71
    new-instance p2, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0107

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InvitedViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 73
    :cond_1
    new-instance p2, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0106

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onSendEmailClick(Landroid/view/View;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 3

    .line 274
    invoke-virtual {p2}, Lru/rocketbank/core/model/contact/Contact;->getEmails()Ljava/util/ArrayList;

    move-result-object p2

    .line 275
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->shareViaEmail(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v2, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$10;

    invoke-direct {v2, p0, p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$10;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 289
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->invitesFriend()V

    return-void
.end method

.method public onSendSmsClick(Landroid/view/View;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 3

    .line 253
    invoke-virtual {p2}, Lru/rocketbank/core/model/contact/Contact;->getPhones()Ljava/util/ArrayList;

    move-result-object p2

    .line 254
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->shareViaSms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v2, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$9;

    invoke-direct {v2, p0, p1, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$9;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 268
    :goto_0
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->invitesFriend()V

    return-void
.end method

.method public setInvitations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;)V"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->invitations:Ljava/util/List;

    return-void
.end method
