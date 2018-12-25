.class public abstract Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "FriendUrlsBaseFragment.java"


# instance fields
.field private _data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;)Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;
    .locals 0

    .line 26
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->_data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    return-object p0
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method private createLineView()Landroid/view/View;
    .locals 4

    .line 179
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method protected abstract createMessageBody(JLjava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract createMessageSubject(J)Ljava/lang/String;
.end method

.method protected abstract getInfoHeader()Ljava/lang/String;
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0002

    .line 159
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v0, 0x7f0c00dc

    const/4 v1, 0x0

    move-object/from16 v2, p2

    .line 35
    invoke-virtual {v7, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 37
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "amount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 39
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    iput-object v0, v6, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->_data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    const v0, 0x7f0903c0

    .line 41
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    iget-object v1, v6, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->_data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v1, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$1;

    invoke-direct {v1, v6}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$1;-><init>(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, v6, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->_data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->getPhones()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    iget-object v0, v6, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->_data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->getPhones()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 58
    :goto_1
    iget-object v0, v6, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->_data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->getEmails()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    move-object v12, v0

    goto :goto_3

    :cond_1
    iget-object v0, v6, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->_data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->getEmails()Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    .line 60
    :goto_3
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f090211

    .line 61
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v17, v8

    goto/16 :goto_6

    :cond_2
    const v0, 0x7f090210

    .line 63
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    .line 65
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 66
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, -0x1

    const v4, 0x7f0903c4

    const v2, 0x7f0901db

    const/4 v3, 0x0

    const v1, 0x7f0c01be

    if-eqz v0, :cond_4

    .line 67
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-virtual {v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    .line 71
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f08025b

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v4, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;

    move-object/from16 v16, v0

    move-object v0, v4

    move-object v1, v6

    move-object v15, v3

    move-wide v2, v9

    move-object/from16 v17, v8

    move-object v8, v4

    move-object v4, v11

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;-><init>(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;DLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v11, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->createLineView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    move-object/from16 v8, v17

    move-object/from16 v11, v18

    goto :goto_4

    :cond_4
    move v11, v5

    move-object/from16 v17, v8

    .line 100
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 101
    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->createLineView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    :cond_5
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 105
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 108
    invoke-virtual {v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    .line 110
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v15, 0x7f08025a

    .line 111
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v15, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$3;

    move-object v0, v15

    move/from16 v16, v1

    move-object v1, v6

    move/from16 v19, v2

    move-object/from16 v18, v3

    move-wide v2, v9

    move/from16 v20, v4

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$3;-><init>(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;DLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v11, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    invoke-direct/range {p0 .. p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->createLineView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    move/from16 v1, v16

    move-object/from16 v3, v18

    move/from16 v2, v19

    move/from16 v4, v20

    goto :goto_5

    :cond_7
    :goto_6
    const v0, 0x7f09018f

    move-object/from16 v1, v17

    .line 145
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getInfoHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090027

    if-ne p1, v0, :cond_0

    .line 165
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->_data:Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->getDefaultUrl()Ljava/lang/String;

    move-result-object p1

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "\u0421\u0441\u044b\u043b\u043a\u0430 \u0434\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u043e\u0434\u0430"

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 169
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v1, "\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f \u0441\u0441\u044b\u043b\u043a\u043e\u0439"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
