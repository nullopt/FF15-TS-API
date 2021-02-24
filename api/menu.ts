import { Table } from "./api";

export declare interface Menu {
  id: string;
  name: string;
  type: string;
  root: Menu;
  depth: number;
  off: number;
  hidden: boolean;

  sub(id: string, name: string): Menu;
  checkbox(id: string): Menu;
  label(id: string, name: string, center: boolean, fill: boolean): Menu;
  slider(
    id: string,
    name: string,
    min: number,
    max: number,
    value: number,
    step: number,
    checkBoxTrue: boolean
  ): Menu;

  key(id: string, name: string, key: number): Menu;
  list(
    id: string,
    name: string,
    value: number,
    list: Table,
    isPriority: boolean,
    isUnremovable: boolean
  ): Menu;

  multiList(id: string, name: string, values: Table, list: Table): Menu;
  priorityList(
    id: string,
    name: string,
    values: Table,
    list: Table,
    isUnremovable: boolean
  ): Menu;
  button(id: string, name: string): Menu;
  color(id: string, name: string, value: string | number): Menu;

  get(other: undefined): boolean;
  get(s: boolean): boolean;
  set(newValue: string | number, tableValue: Table): void;
  permashow(value: boolean, nameOverwri1e: string): Menu;
  onChange(func: () => any, tbl: boolean, key: boolean): Menu;
  onTrigger(func: () => any): Menu;
  hide(value: boolean): Menu;
  isHidden(): boolean;
  cache(value: boolean | undefined): Menu;
  tooltip(value: string): Menu;
}
