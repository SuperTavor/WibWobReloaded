.class public final Lcom/hangame/hsp/util/contact/AddressBookPersonalInfo;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddressBookPersonalInfo"


# instance fields
.field private _name:Ljava/lang/String;

.field private _phoneNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/AddressBookPersonalInfo;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/AddressBookPersonalInfo;->_phoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/AddressBookPersonalInfo;->_name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/AddressBookPersonalInfo;->_phoneNo:Ljava/lang/String;

    return-void
.end method
