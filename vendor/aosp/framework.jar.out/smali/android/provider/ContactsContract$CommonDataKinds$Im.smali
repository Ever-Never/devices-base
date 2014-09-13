.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6140
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6144
    .end local p2
    :goto_0
    return-object p2

    .line 6143
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 6144
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getProtocolLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 6119
    packed-switch p0, :pswitch_data_0

    .line 6129
    const v0, 0x10402db

    :goto_0
    return v0

    .line 6120
    :pswitch_0
    const v0, 0x10402dc

    goto :goto_0

    .line 6121
    :pswitch_1
    const v0, 0x10402dd

    goto :goto_0

    .line 6122
    :pswitch_2
    const v0, 0x10402de

    goto :goto_0

    .line 6123
    :pswitch_3
    const v0, 0x10402df

    goto :goto_0

    .line 6124
    :pswitch_4
    const v0, 0x10402e0

    goto :goto_0

    .line 6125
    :pswitch_5
    const v0, 0x10402e1

    goto :goto_0

    .line 6126
    :pswitch_6
    const v0, 0x10402e2

    goto :goto_0

    .line 6127
    :pswitch_7
    const v0, 0x10402e3

    goto :goto_0

    .line 6128
    :pswitch_8
    const v0, 0x10402e4

    goto :goto_0

    .line 6119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6106
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6110
    .end local p2
    :goto_0
    return-object p2

    .line 6109
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 6110
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 6091
    packed-switch p0, :pswitch_data_0

    .line 6095
    const v0, 0x10402d7

    :goto_0
    return v0

    .line 6092
    :pswitch_0
    const v0, 0x10402d8

    goto :goto_0

    .line 6093
    :pswitch_1
    const v0, 0x10402d9

    goto :goto_0

    .line 6094
    :pswitch_2
    const v0, 0x10402da

    goto :goto_0

    .line 6091
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
