
/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { button } from './button'

export enum CardType {
  Normal,
  Outlined,
  Elevated
}

export enum MediaIconPosition {
  Middle,
  Top,
  Right
}

class Properties {
  private cardType: CardType = CardType.Normal
  private cardBorderWidth: number | string = "2vp"
  private cardBorderColor: string | Color | Resource = Color.Blue
  private borderRadius: number | string = "20vp"
  private cardBackgroundColor: string | Color | Resource = Color.White
  private shadowColor: string | Color | Resource = Color.Grey
  private shadowRadius: number | Resource = 20

  setCardBorderWidth(cardBorderWidth: number | string): Properties{
    this.cardBorderWidth = cardBorderWidth
    return this
  }

  getCardBorderWidth(): number | string{
    return this.cardBorderWidth
  }

  setCardType(cardType: CardType) {
    this.cardType = cardType
    return this
  }

  getCardType(): CardType{
    return this.cardType
  }

  setCardBorderColor(cardBorderColor: string | Resource | Color) {
    this.cardBorderColor = cardBorderColor != null ? cardBorderColor : Color.Blue
    return this
  }

  getCardBorderColor(): string | Resource | Color{
    return this.cardBorderColor
  }

  setBorderRadius(borderRadius: number | string) {
    this.borderRadius = borderRadius != null ? borderRadius : "20vp"
    return this
  }

  getBorderRadius(): number | string {
    return this.borderRadius
  }

  setCardBackGroundColor(cardBackgroundColor: string | Resource | Color) {
    this.cardBackgroundColor = cardBackgroundColor != null ? cardBackgroundColor : Color.White
    return this
  }

  getCardBackgroundColor(): string | Resource | Color{
    return this.cardBackgroundColor
  }

  setShadowColor(shadowColor: string | Resource | Color) {
    this.shadowColor = shadowColor != null ? shadowColor : Color.Grey
    return this
  }

  getShadowColor() : string | Resource | Color {
    return this.shadowColor
  }

  setShadowRadius(shadowRadius: number | Resource ) {
    this.shadowRadius = shadowRadius != null ? shadowRadius : 25
    return this
  }

  getShadowRadius(): number | Resource  {
    return this.shadowRadius
  }
}

export class CardModel extends Properties {
  private title: string | Resource = ""
  private titleFontSize: number | string = '25fp'
  private titleFontColor: string | Resource | Color = Color.Black
  private titleFontWeight: FontWeight = FontWeight.Bold

  private subTitle: string | Resource = ""
  private subTitleFontSize: number | string = "15fp"
  private subTitleFontColor: string | Resource | Color = Color.Black
  private subTitleFontWeight: FontWeight = FontWeight.Normal

  private cardHeight: number | string = "540vp"
  private cardWidth: number | string = "300vp"

  private leadingIcon: string | Resource = undefined
  private leadingIconWidth: number | string = "64vp"
  private leadingIconHeight: number | string = "64vp"

  private mediaIconPosition: MediaIconPosition = MediaIconPosition.Middle
  private mediaIcon: string | Resource = undefined
  private mediaIconWidth: number | string = "300vp"
  private mediaIconHeight: number | string = "144vp"

  private supportingText: string | Resource = ""
  private supportingTextFontSize: number | string = "15fp"
  private supportingTextFontColor: string | Resource | Color = Color.Black
  private supportingTextFontWeight: FontWeight = FontWeight.Medium

  private showDivider: boolean = false

  private buttonHeader: string | Resource = ""
  private buttons: button.Model [] = []

  private actions: button.Model [] = []

  private buttonClick: (button: button.Model) => void = undefined
  private actionClick: (action: button.Model) => void = undefined
  private cardClick: () => void = undefined

  setSupportingTextFontSize(supportingTextFontSize: number): CardModel{
    this.supportingTextFontSize = supportingTextFontSize
    return this
  }

  getSupportingTextFontSize(): number | string {
    return this.supportingTextFontSize
  }
  setSupportingTextFontColor(supportingTextFontColor: string | Resource | Color): CardModel{
    this.supportingTextFontColor = supportingTextFontColor
    return this
  }

  getSupportingTextFontColor(): string | Resource | Color {
    return this.supportingTextFontColor
  }
  setSupportingTextFontWeight(supportingTextFontWeight: FontWeight): CardModel{
    this.supportingTextFontWeight = supportingTextFontWeight
    return this
  }

  getSupportingTextFontWeight(): FontWeight{
    return this.supportingTextFontWeight
  }

  setCardClick(callBack: () => void) {
    this.cardClick = callBack
    return this
  }

  getCardClick(): () => void {
    return this.cardClick
  }

  setButtonClick(callBack: (button: button.Model) => void) {
    this.buttonClick = callBack
    return this
  }

  getButtonClick(): (button: button.Model) => void{
    return this.buttonClick
  }

  setActionClick(callBack: (action: button.Model) => void) {
    this.actionClick = callBack
    return this
  }

  getActionClick(): (action: button.Model) => void{
    return this.actionClick
  }

  constructor(title: string | Resource, subTitle: string | Resource) {
    super()
    this.title = title
    this.subTitle = subTitle
  }

  getTitle(): string | Resource{
    return this.title
  }

  setTitleFontSize(titleFontSize: number | string) {
    this.titleFontSize = titleFontSize
    return this
  }

  getTitleFontSize(): number | string{
    return this.titleFontSize
  }

  setTitleFontColor(titleFontColor: string | Resource | Color) {
    this.titleFontColor = titleFontColor
    return this
  }

  getTitleFontColor(): string | Resource | Color{
    return this.titleFontColor
  }

  setTitleFontWeight(titleFontWeight: FontWeight) {
    this.titleFontWeight = titleFontWeight
    return this
  }

  getTitleFontWeight(): FontWeight {
    return this.titleFontWeight
  }

  getSubTitle(): string | Resource{
    return this.subTitle
  }

  setSubTitleFontSize(subTitleFontSize: number | string) {
    this.subTitleFontSize = subTitleFontSize
    return this
  }

  getSubTitleFontSize(): number | string{
    return this.subTitleFontSize
  }

  setSubTitleFontColor(subTitleFontColor: string | Resource | Color) {
    this.subTitleFontColor = subTitleFontColor
    return this
  }

  getSubTitleFontColor(): string | Resource | Color{
    return this.subTitleFontColor
  }

  setSubTitleFontWeight(subTitleFontWeight: FontWeight) {
    this.subTitleFontWeight = subTitleFontWeight
    return this
  }

  getSubTitleFontWeight(): FontWeight {
    return this.subTitleFontWeight
  }

  setCardHeight(cardHeight: number | string) {
    this.cardHeight = cardHeight != null ? cardHeight : "540vp"
    return this
  }

  getCardHeight(): number | string{
    return this.cardHeight
  }

  setCardWidth(cardWidth: number | string) {
    this.cardWidth = cardWidth != null ? cardWidth : "300vp"
    return this
  }

  getCardWidth(): number | string{
    return this.cardWidth
  }

  setLeadingIcon(leadingIcon: string | Resource): CardModel{
    this.leadingIcon = leadingIcon != null ? leadingIcon : undefined
    return this
  }

  getLeadingIcon(): string | Resource {
    return this.leadingIcon
  }

  setLeadingIconWidth(leadingIconWidth: number | string): CardModel{
    this.leadingIconWidth = leadingIconWidth != null ? leadingIconWidth : "64vp"
    return this
  }

  getLeadingIconWidth(): number | string{
    return this.leadingIconWidth
  }

  setLeadingIconHeight(leadingIconHeight: number | string): CardModel{
    this.leadingIconHeight = leadingIconHeight != null ? leadingIconHeight : "64vp"
    return this
  }

  getLeadingIconHeight(): number | string{
    return this.leadingIconHeight
  }

  setMediaIcon(mediaIcon: string | Resource): CardModel{
    this.mediaIcon = (mediaIcon == null ? undefined : mediaIcon)
    return this
  }

  setMediaIconPosition(mediaIconPosition: MediaIconPosition) {
    this.mediaIconPosition = mediaIconPosition != null ? mediaIconPosition : MediaIconPosition.Middle
  }

  getMediaIconPosition(): MediaIconPosition{
    return this.mediaIconPosition
  }

  getMediaIcon(): string | Resource{
    return this.mediaIcon
  }

  setMediaIconWidth(mediaIconWidth: number | string): CardModel{
    this.mediaIconWidth = mediaIconWidth != null ? mediaIconWidth : this.cardWidth
    return this
  }

  getMediaIconWidth(): number | string{
    return this.mediaIconWidth
  }

  setMediaIconHeight(mediaIconHeight: number | string): CardModel{
    this.mediaIconHeight = mediaIconHeight != null ? mediaIconHeight : "120vp"
    return this
  }

  getMediaIconHeight(): number | string{
    return this.mediaIconHeight
  }

  setSupportingText(supportingText: string | Resource): CardModel{
    this.supportingText = supportingText
    return this
  }

  getSupportingText(): string | Resource{
    return this.supportingText
  }

  setShowDivider(showDivider: boolean): CardModel{
    this.showDivider = showDivider != null ?? showDivider;
    false
    return this
  }

  getShowDivider(): boolean{
    return this.showDivider
  }

  setButtonHeader(buttonHeader: string | Resource): CardModel{
    this.buttonHeader = buttonHeader != null ? buttonHeader : ""
    return this
  }

  getButtonHeader(): string | Resource{
    return this.buttonHeader
  }

  setButtons(buttons: button.Model[]): CardModel{
    this.buttons = buttons
    return this
  }

  getButtons(): button.Model[]{
    return this.buttons
  }

  setActions(actions: button.Model[]): CardModel{
    this.actions = actions
    return this
  }

  getActions(): button.Model[]{
    return this.actions
  }

  reset() : CardModel {
    this.setCardType(CardType.Normal)
    this.setCardBorderWidth("2vp")
    this.setCardBorderColor(Color.Blue)
    this.setBorderRadius("20vp")
    this.setCardBackGroundColor(Color.White)
    this.setShadowColor(Color.Grey)
    this.setShadowRadius(20)

    this.title = "Title"
    this.titleFontSize = "25fp"
    this.titleFontColor = Color.Black
    this.titleFontWeight = FontWeight.Bold

    this.subTitle = "SubTitle"
    this.subTitleFontSize = "15fp"
    this.subTitleFontColor = Color.Black
    this.subTitleFontWeight = FontWeight.Normal

    this.cardHeight = "540vp"
    this.cardWidth = "300vp"

    this.leadingIcon = undefined
    this.leadingIconWidth = "64vp"
    this.leadingIconHeight = "64vp"

    this.mediaIconPosition = MediaIconPosition.Middle
    this.mediaIcon = undefined
    this.mediaIconWidth = "300vp"
    this.mediaIconHeight = "144vp"

    this.supportingText = ""
    this.subTitleFontSize = "15fp"
    this.subTitleFontColor = Color.Black
    this.subTitleFontWeight = FontWeight.Normal

    this.showDivider = false

    this.buttonHeader = ""
    this.buttons = []

    this.actions = []

    this.buttonClick = undefined
    this.actionClick = undefined
    this.cardClick = undefined
    return this
  }
}
